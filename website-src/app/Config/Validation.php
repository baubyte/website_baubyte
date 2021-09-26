<?php

namespace Config;

use CodeIgniter\Validation\CreditCardRules;
use CodeIgniter\Validation\FileRules;
use CodeIgniter\Validation\FormatRules;
use CodeIgniter\Validation\Rules;
use Denis303\ReCaptcha\Validation\ReCaptchaRules;
use Myth\Auth\Authentication\Passwords\ValidationRules;

class Validation
{
	//--------------------------------------------------------------------
	// Setup
	//--------------------------------------------------------------------

	/**
	 * Stores the classes that contain the
	 * rules that are available.
	 *
	 * @var string[]
	 */
	public $ruleSets = [
		Rules::class,
		FormatRules::class,
		FileRules::class,
		CreditCardRules::class,
		ReCaptchaRules::class,
		ValidationRules::class,
	];

	/**
	 * Specifies the views that are used to display the
	 * errors.
	 *
	 * @var array<string, string>
	 */
	public $templates = [
		'list'   => 'CodeIgniter\Validation\Views\list',
		'single' => 'CodeIgniter\Validation\Views\single',
		
	];

	//--------------------------------------------------------------------
	// Rules
	//--------------------------------------------------------------------

	/**
	 * Reglas de Validación para los POST / Artículos 
	 *
	 * @var array
	 */	
	public $contactEmail = [
		'name' => [
			'label'  => 'Validation.nameLabel',
			'rules'  => 'required|alpha_space|min_length[3]'
		],
		'subject' => [
			'label'  => 'Validation.subjectLabel',
			'rules'  => 'required|alpha_space|min_length[3]'
		],
		'email' => [
			'label'  => 'Validation.emailLabel',
			'rules'  => 'required|valid_email'
		],
		'message' => [
			'label'  => 'Validation.messageLabel',
			'rules'  => 'required|alpha_space|min_length[3]'
		],
		'reCaptcha2' => [
			'label'  => 'Validation.reCaptcha',
			'rules'  => 'required|reCaptcha2[]'
		],
		
	];
		
		/**	
		 * Reglas de Validación para el store del perfil.
		 *
		 * @var array
		 */
		public $profileStore = [
			'avatar' => [
				'label'  => 'Foto de Perfil',
				'rules'  => 'uploaded[avatar]|is_image[avatar]',
				'errors' => [
					'uploaded' => 'La {field} es Obligatoria.',
					'is_image' => 'La {field} no es un tipo de Archivo Valido.',
				]
			],
			'name' => [
				'label'  => 'Nombre',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'surname' => [
				'label'  => 'Apellido',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'email_contact' => [
				'label'  => 'Email de Contacto',
				'rules'  => 'required|valid_email',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_email' => 'El {field} no es Válido.',
				]
			],
			'description_en' => [
				'label'  => 'Reseña Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_es' => [
				'label'  => 'Reseña Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_es' => [
				'label'  => 'Especialidad Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_en' => [
				'label'  => 'Especialidad Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'language_es' => [
				'label'  => 'Idiomas Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'language_en' => [
				'label'  => 'Idiomas Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'github_url' => [
				'label'  => 'URL Github',
				'rules'  => 'required|valid_url',
				'errors' => [
					'required' => 'La {field} es Obligatorio.',
					'valid_url' => 'La {field} no es Válida.',
				]
			],
			'linkedin_url' => [
				'label'  => 'URL Perfil Linkedin',
				'rules'  => 'required|valid_url',
				'errors' => [
					'required' => 'La {field} es Obligatorio.',
					'valid_url' => 'La {field} no es Válida.',
				]
			],
			'instagram_url' => [
				'label'  => 'URL Perfil Instagram',
				'rules'  => 'required|valid_url',
				'errors' => [
					'required' => 'La {field} es Obligatorio.',
					'valid_url' => 'La {field} no es Válida.',
				]
			],
		];
		/**	
		 * Reglas de Validación para el update del perfil.
		 *
		 * @var array
		 */
		public $profileUpdate = [
			'avatar' => [
				'label'  => 'Foto de Perfil',
				'rules'  => 'is_image[avatar]',
				'errors' => [
					'uploaded' => 'La {field} es Obligatoria.',
					'is_image' => 'La {field} no es un tipo de Archivo Valido.',
				]
			],
			'name' => [
				'label'  => 'Nombre',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'surname' => [
				'label'  => 'Apellido',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'email_contact' => [
				'label'  => 'Email de Contacto',
				'rules'  => 'required|valid_email',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_email' => 'El {field} no es Válido.',
				]
			],
			'description_en' => [
				'label'  => 'Reseña Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_es' => [
				'label'  => 'Reseña Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_es' => [
				'label'  => 'Especialidad Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_en' => [
				'label'  => 'Especialidad Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'language_es' => [
				'label'  => 'Idiomas Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'language_en' => [
				'label'  => 'Idiomas Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'github_url' => [
				'label'  => 'URL Github',
				'rules'  => 'required|valid_url',
				'errors' => [
					'required' => 'La {field} es Obligatorio.',
					'valid_url' => 'La {field} no es Válida.',
				]
			],
			'linkedin_url' => [
				'label'  => 'URL Perfil Linkedin',
				'rules'  => 'required|valid_url',
				'errors' => [
					'required' => 'La {field} es Obligatorio.',
					'valid_url' => 'La {field} no es Válida.',
				]
			],
			'instagram_url' => [
				'label'  => 'URL Perfil Instagram',
				'rules'  => 'required|valid_url',
				'errors' => [
					'required' => 'La {field} es Obligatorio.',
					'valid_url' => 'La {field} no es Válida.',
				]
			],
		];
		/**	
		 * Reglas de Validación para el store del skill.
		 *
		 * @var array
		 */
		public $skillStore = [
			'name' => [
				'label'  => 'Nombre Skill',
				'rules'  => 'required|string|min_length[2]|is_unique[skills.name]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 2 caracteres.',
					'is_unique' => 'El Skill que ingresaste ya Existe.',
				]
			],
			'percentage' => [
				'label'  => 'Porcentaje Skill',
				'rules'  => 'required|integer|regex_match[^0*(?:[1-9][0-9]?|100)$]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'integer' => 'El {field} solo admite Valores Enteros.',
					'regex_match' => 'Solo Valores Entre 1 y 100.'
				]
			],
		];
		/**	
		 * Reglas de Validación para el update del skill.
		 *
		 * @var array
		 */
		public $skillUpdate = [
			'name' => [
				'label'  => 'Nombre Skill',
				'rules'  => 'required|string|min_length[2]|is_unique[skills.name,id,{id}]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 2 caracteres.',
					'is_unique' => 'El Skill que ingresaste ya Existe.',
				]
			],
			'percentage' => [
				'label'  => 'Porcentaje Skill',
				'rules'  => 'required|integer|regex_match[^0*(?:[1-9][0-9]?|100)$]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'integer' => 'El {field} solo admite Valores Enteros.',
					'regex_match' => 'Solo Valores Entre 1 y 100.'
				]
			],
		];
		/**	
		 * Reglas de Validación para el store del experience.
		 *
		 * @var array
		 */
		public $experienceStore = [
			'company' => [
				'label'  => 'Empresa / Institucion',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_en' => [
				'label'  => 'Reseña Ingles',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_es' => [
				'label'  => 'Reseña Español',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_es' => [
				'label'  => 'Especialidad Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_en' => [
				'label'  => 'Especialidad Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'start' => [
				'label'  => 'Fecha Inicio',
				'rules'  => 'required|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
			'end' => [
				'label'  => 'Fecha Fin',
				'rules'  => 'permit_empty|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
		];
		/**	
		 * Reglas de Validación para el update del experience.
		 *
		 * @var array
		 */
		public $experienceUpdate = [
			'company' => [
				'label'  => 'Empresa / Institucion',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_en' => [
				'label'  => 'Reseña Ingles',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_es' => [
				'label'  => 'Reseña Español',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_es' => [
				'label'  => 'Especialidad Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'specialty_en' => [
				'label'  => 'Especialidad Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'start' => [
				'label'  => 'Fecha Inicio',
				'rules'  => 'required|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
			'end' => [
				'label'  => 'Fecha Fin',
				'rules'  => 'permit_empty|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
		];
		/**	
		 * Reglas de Validación para el store del study.
		 *
		 * @var array
		 */
		public $studyStore = [
			'entity' => [
				'label'  => 'Institucion',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_en' => [
				'label'  => 'Reseña Ingles',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_es' => [
				'label'  => 'Reseña Español',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'title_es' => [
				'label'  => 'Titulo Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'title_en' => [
				'label'  => 'Titulo Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'start' => [
				'label'  => 'Fecha Inicio',
				'rules'  => 'required|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
			'end' => [
				'label'  => 'Fecha Fin',
				'rules'  => 'permit_empty|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
		];
		/**	
		 * Reglas de Validación para el store del study.
		 *
		 * @var array
		 */
		public $studyUpdate = [
			'entity' => [
				'label'  => 'Institucion',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_en' => [
				'label'  => 'Reseña Ingles',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'description_es' => [
				'label'  => 'Reseña Español',
				'rules'  => 'permit_empty|string|min_length[4]',
				'errors' => [
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'title_es' => [
				'label'  => 'Titulo Español',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'title_en' => [
				'label'  => 'Titulo Ingles',
				'rules'  => 'required|string|min_length[4]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'string' => 'Solo se permiten letras y signos de puntuación.',
					'min_length' => 'El {field} debe tener un minimo de 4 caracteres.',
				]
			],
			'start' => [
				'label'  => 'Fecha Inicio',
				'rules'  => 'required|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
			'end' => [
				'label'  => 'Fecha Fin',
				'rules'  => 'permit_empty|valid_date[d/m/Y]',
				'errors' => [
					'required' => 'El {field} es Obligatorio.',
					'valid_date' => 'La {field} no Valida.',
				]
			],
		];
}
